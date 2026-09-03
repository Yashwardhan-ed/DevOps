from http.server import HTTPServer, BaseHTTPRequestHandler

class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(b"Hello from Docker!\n")

if __name__ == "__main__":
    server_address = ("0.0.0.0", 8081)
    httpd = HTTPServer(server_address, SimpleHandler)
    print("Serving on port 8081...")
    httpd.serve_forever()