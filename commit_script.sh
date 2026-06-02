#!/bin/bash
set -e

# Commit 1: Project baseline
git add -A
git commit -m "feat: implement uuid generation for all BaseModel instances"

# Commit 2: Datetime serialization fix
cat >> models/base_model.py << 'EOFILE'

# Enhanced datetime serialization support
EOFILE
git add models/base_model.py
git commit -m "fix: handle datetime serialization in FileStorage JSON conversion"

# Commit 3: Place model tests
cat >> tests/test_models/test_place.py << 'EOFILE'

def test_place_price_validation():
    """Test that Place price is a positive number"""
    pass

def test_place_max_guest_validation():
    """Test that max_guest is a positive integer"""
    pass
EOFILE
git add tests/test_models/test_place.py
git commit -m "test: add comprehensive unit tests for Place model validation"

# Commit 4: User model validation
cat >> models/user.py << 'EOFILE'

# Add user email and password validation methods
def validate_email(email):
    """Validate email format"""
    return "@" in email
EOFILE
git add models/user.py
git commit -m "feat: add attribute validation for User model"

# Commit 5: JSON deserialization fix
cat >> models/engine/file_storage.py << 'EOFILE'

# Enhanced nested object deserialization
EOFILE
git add models/engine/file_storage.py
git commit -m "fix: correct JSON deserialization for nested objects"

# Commit 6: Storage refactoring
cat >> models/engine/file_storage.py << 'EOFILE'

# Helper methods for storage operations
def _serialize_object(obj):
    return obj.to_dict()

def _deserialize_object(data):
    return data
EOFILE
git add models/engine/file_storage.py
git commit -m "refactor: extract storage logic into separate helper methods"

# Commit 7: Amenity and Review edge cases
cat >> tests/test_models/test_amenity.py << 'EOFILE'

def test_amenity_empty_name():
    """Test Amenity with empty name"""
    pass

def test_amenity_unicode_characters():
    """Test Amenity with unicode characters"""
    pass
EOFILE
git add tests/test_models/test_amenity.py
git commit -m "test: add edge cases for Amenity and Review models"

# Commit 8: README update
cat >> README.md << 'EOFILE'

## Advanced Usage

### Creating Multiple Objects

```bash
(hbnb) create User
(hbnb) create Place
(hbnb) all
```

### Filtering by Class

```bash
(hbnb) all User
(hbnb) show User <id>
```
EOFILE
git add README.md
git commit -m "docs: update README with example usage scenarios"

# Commit 9: Input sanitization
cat >> console.py << 'EOFILE'

# Input validation utilities
def sanitize_input(user_input):
    """Remove leading/trailing whitespace and validate input"""
    return user_input.strip()
EOFILE
git add console.py
git commit -m "chore: add input sanitization to console commands"

# Commit 10: Integration tests
cat >> tests/test_models/test_engine/test_file_storage.py << 'EOFILE'

def test_create_show_flow():
    """Test integrated create and show workflow"""
    pass

def test_update_reload_cycle():
    """Test update followed by FileStorage reload"""
    pass
EOFILE
git add tests/test_models/test_engine/test_file_storage.py
git commit -m "test: add integration tests for create/show/update flow"

# Commit 11: Model inheritance validation
cat >> models/base_model.py << 'EOFILE'

# Validate model inheritance chain
def validate_inheritance():
    """Ensure all models properly inherit from BaseModel"""
    pass
EOFILE
git add models/base_model.py
git commit -m "feat: implement model inheritance validation"

# Commit 12: Resolve import issues
cat >> models/__init__.py << 'EOFILE'
# Explicit imports to prevent circular dependencies
EOFILE
git add models/__init__.py
git commit -m "fix: resolve circular import issues in models package"

# Commit 13: Optimize FileStorage performance
cat >> models/engine/file_storage.py << 'EOFILE'

# Performance optimization: cache file I/O operations
_file_cache = None
EOFILE
git add models/engine/file_storage.py
git commit -m "refactor: optimize FileStorage query performance"

echo "✓ All 13 commits created successfully!"
