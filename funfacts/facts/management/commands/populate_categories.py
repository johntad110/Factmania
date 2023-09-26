from django.core.management.base import BaseCommand
from facts.models import Categories

class Command(BaseCommand):
    help = 'Populates the Category model with initial data'

    def handle(self, *args, **options):
        categories = [
            {'category_name': 'Animal Facts'},
            {'category_name': 'Historical Facts'},
            {'category_name': 'Science Facts'},
            {'category_name': 'Geography Facts'},
            {'category_name': 'Sports Facts'},
            {'category_name': 'Food and Drink Facts'},
            {'category_name': 'Pop Culture Facts'},
            {'category_name': 'Nature Facts'},
            {'category_name': 'Art and Literature Facts'},
            {'category_name': 'Technology Facts'},
        ]

        for category in categories:
            Categories.objects.get_or_create(**category)

        self.stdout.write(self.style.SUCCESS('Successfully populated Categories'))