from django.core.management.base import BaseCommand
from facts.models import Facts

class Command(BaseCommand):
    help = 'Populates the Facts model with initial data'

    def handle(self, *args, **options):
        animal_facts = [
            {'fact_title': 'Blue Whale Heart', 'fact_text': 'The heart of a blue whale is so big that a human could swim through its arteries.', 'fact_discription': 'The blue whale is the largest animal on Earth, and its heart can weigh up to 1,000 pounds.', 'source': 'National Geographic'},
            {'fact_title': 'Pig Intelligence', 'fact_text': 'Pigs are actually very intelligent animals, and can be trained to play video games with a joystick.', 'fact_discription': 'Pigs have been shown to be as intelligent as dogs, and can even learn to use mirrors to find hidden food.', 'source': 'BBC'},
            {'fact_title': 'Sloth Defecation', 'fact_text': 'Sloths only defecate once a week, and will often climb down from trees to do so.', 'fact_discription': 'Sloths have a very slow metabolism, which means they don\'t need to eat very often, and can conserve energy by only defecating once a week.', 'source': 'Smithsonian Magazine'}
        ]

        historical_facts = [
            {'fact_title': 'Great Wall of China', 'fact_text': 'The Great Wall of China is not actually visible from space, despite popular belief.', 'fact_discription': 'The wall is only a few meters wide, making it difficult to see from space without magnification.', 'source': 'NASA'},
            {'fact_title': 'Shortest War', 'fact_text': 'The shortest war in history was between Britain and Zanzibar in 1896, and lasted just 38 minutes.', 'fact_discription': 'The war started when the Sultan of Zanzibar died and his successor refused to acknowledge the British consul. The British responded by bombing the palace and declaring war.', 'source': 'Guinness World Records'},
            {'fact_title': 'Greek Exercise', 'fact_text': 'The ancient Greeks used to exercise in the nude, and the word "gymnasium" actually comes from the Greek word "gymnos" meaning "naked".', 'fact_discription': 'The Greeks believed that exercise was essential for both physical and mental health, and often did so in public without clothing.', 'source': 'Smithsonian Magazine'}
        ]

        science_facts = [
            {'fact_title': 'Brain Connections', 'fact_text': 'The human brain contains more connections than there are stars in the Milky Way galaxy.', 'fact_discription': 'The human brain has over 100 billion neurons, each of which can form thousands of connections with other neurons, resulting in trillions of connections in total.', 'source': 'Scientific American'},
            {'fact_title': 'Mars Volcano', 'fact_text': 'The largest volcano in our solar system is on Mars, and it\'s three times the height of Mount Everest.', 'fact_discription': 'The volcano, called Olympus Mons, is over 13 miles high, making it one of the tallest mountains in the solar system.', 'source': 'NASA'},
            {'fact_title': 'Seagrass Longevity', 'fact_text': 'The longest living organism on Earth is a type of seagrass called "Posidonia oceanica", which can live for up to 100,000 years.', 'fact_discription': 'The seagrass reproduces asexually, and can form large meadows that cover thousands of hectares of the ocean floor.', 'source': 'BBC'}
        ]

        geography_facts = [
            {'fact_title': 'Norwegian Town', 'fact_text': 'There is a town in Norway called "Hell", and it freezes over in winter.', 'fact_discription': 'The town has a population of around 1,500, and is located near the Trondheim airport.', 'source': 'CNN'},
            {'fact_title': 'Venice Islands', 'fact_text': 'The city of Venice in Italy is built on over 100 small islands, and has over 400 bridges connecting them.', 'fact_discription': 'The islands are connected by a network of canals, and the city is known for its beautiful architecture and artwork.', 'source': 'Lonely Planet'},
            {'fact_title': 'Antarctic Desert', 'fact_text': 'The largest desert in the world is not the Sahara, but actually Antarctica, which is considered a polar desert.', 'fact_discription': 'Antarctica is the driest continent on Earth, with an annual precipitation of less than 10 centimeters.', 'source': 'National Geographic'}
        ]

        sports_facts =[
            {'fact_title': 'Basketball Invention', 'fact_text': 'Basketball was invented by a Canadian physical education teacher named James Naismith in 1891.', 'fact_discription': 'Naismith wanted to create a new game that could be played indoors during the winter, and came up with basketball as a solution.', 'source': 'NBA'},
            {'fact_title': 'Soccer Popularity', 'fact_text': 'Soccer (or football) is the most popular sport in the world, with an estimated 4 billion fans.', 'fact_discription': 'The sport is played in almost every country, and has a long history dating back to ancient civilizations.', 'source': 'FIFA'},
            {'fact_title': 'Cricket Origins', 'fact_text': 'Cricket, which is popular in many Commonwealth countries, can be traced back to 16th century England.', 'fact_discription': 'The game evolved from other bat and ball games, and has since spread to other parts of the world, including India, Australia, and South Africa.', 'source': 'BBC'}
        ]

        all_facts = animal_facts + historical_facts + science_facts + geography_facts + sports_facts

        for fact in all_facts:
            Facts.objects.get_or_create(**fact)

        self.stdout.write(self.style.SUCCESS('Successfully populated Facts'))
