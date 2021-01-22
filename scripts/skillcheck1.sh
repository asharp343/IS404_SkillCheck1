yum install httpd
echo starting apache server
service httpd start
service httpd status
yum install tree
cd /var/www/html

# Add index.css
echo "
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Skill Check 1</title>
</head>
<body>
    <div class="container">
        <h1>Skill Check 1</h1>
    </div>
    <ul>
        <li><a href="pages/page1.html">Subdirectory Page 1</a></li>
        <li><a href="tree.html">Tree Page</a></li>
        <li><a href="pages/extra.html">Extra Page</a></li>
    </ul>
    
</body>
</html>
" > index.html

mkdir css
mkdir pages
mkdir scripts

cd css

# Add styles.css
echo "
body{
    text-align: center;
}

li{
    list-style-type: none;
}

.container{
    width: 60%;
    height: 80px;
    background-color: #89cff0;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: auto;
}
" > styles.css

cd ../scripts
cat /scripts/myscript.sh > myscript.sh

cd ../pages

# add extra.html and page1.html
echo "
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Extra</title>
</head>
<body>
    <h1>Extra Page</h1>
    <p>For my extra page I wrote a bash script to create this entire website for me. You can download the .sh file below and see the script if you would like.</p>
    <br><br><br>
    <p>myscript.sh</p>
    <p>-------------</p>
    <a href="../scripts/myscript.sh">Download and View</a>
</body>
</html>
" > extra.html



echo "
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Subdirectory page</h1>
</body>
</html>
" > page1.html


cd /var/www/html

tree /var/www/html > tree.html