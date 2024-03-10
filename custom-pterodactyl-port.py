import socket
import threading
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("port", help="Port: ")
args = parser.parse_args()

def handle_client(client_socket):
    request = client_socket.recv(1024)
    
    remote_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    remote_socket.connect(("localhost", 80))
    remote_socket.send(request)
    
    response = remote_socket.recv(1024)
    
    client_socket.send(response)
    
    client_socket.close()
    remote_socket.close()

def main(port):
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind(("localhost", str(port)))
    server.listen(5)
    
    while True:
        client_socket, addr = server.accept()
        client_handler = threading.Thread(target=handle_client, args=(client_socket,))
        client_handler.start()

if __name__ == "__main__":
    port = args.port
    main(port)
