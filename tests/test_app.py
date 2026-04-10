import sys
import os

# Add project root to path so 'app' module can be found
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

import pytest
from app import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_hello_endpoint(client):
    response = client.get('/')
    assert response.status_code == 200
    data = response.get_json()
    assert data['message'] == 'Hello DevOps'
    assert data['status'] == 'running'

def test_health_endpoint(client):
    response = client.get('/health')
    assert response.status_code == 200
    data = response.get_json()
    assert data['status'] == 'healthy'

def test_invalid_route(client):
    response = client.get('/nonexistent')
    assert response.status_code == 404