This is a scanalyze prototype

it does the section where after the product has been scanned it will:

1. First get product info (name,brand,calories, ingredients, etc.)
from the openfoodfacts API
then it will get the ingredients info from the local database table named (ingredients_info)
currently it is empty.

2. Incase openfoodfacts api fails
it will grab the product information from the local database table named (food_product)
and do the same thing for ingredients as in the previous step

in case you want to test this:

YOU HAVE TO RUN node.js (server.js) file first as it is a backend api for the backend solution

-----PLEASE READ THE COMMENTS IN MAIN.DART IF U WANT TO TEST-------

check the backend section for the backend api as it differs depending on the type of test u want to do
as in web or on android emulator

and in case u want to test it on android emulator

1. change the backend api from localhost to 10.0.2.2

2. add this line in the <application> section in this file AndroidManifest.xml

the line : android:usesCleartextTraffic="true"

following this path in the android folder
android/app/src/main/AndroidManifest.xml
