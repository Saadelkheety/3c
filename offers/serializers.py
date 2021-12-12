from rest_framework import serializers
from offers.models import Kid


class KidSerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    name = serializers.CharField(max_length=512)
    email = serializers.EmailField(required=False)
    phone_number = serializers.CharField(max_length=12)
    school = serializers.CharField(max_length=256, required=False)
    age = serializers.CharField(default='9-12', max_length=100, required=False)

    def create(self, validated_data):
        """
        Create and return a new `Snippet` instance, given the validated data.
        """
        return Kid.objects.create(**validated_data)

    def update(self, instance, validated_data):
        """
        Update and return an existing `Snippet` instance, given the validated data.
        """
        instance.name = validated_data.get('name', instance.name)
        instance.email = validated_data.get('email', instance.email)
        instance.phone_number = validated_data.get('phone_number', instance.phone_number)
        instance.school = validated_data.get('school', instance.school)
        instance.age = validated_data.get('age', instance.age)
        instance.save()
        return instance
