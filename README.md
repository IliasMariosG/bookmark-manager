# bookmark-manager

<h2>User Stories</h2>

As a user, so that I can view my bookmarks, I would like a list of my bookmarks to be presented when I view the homepage

<h2>Domain model</h2>

step 1.     app.rb --(retrieve_user)--> users_list.rb

step 2.     app.rb --> user.rb --(retrieve_bookmarks)--> bookmarks 

step 3.     app.rb ----> index.erb


'''html
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=5,IE=9" ><![endif]-->
<!DOCTYPE html>
<html>
<head>
<title>bookmark manager</title>
<meta charset="utf-8"/>
</head>
<body><div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;www.draw.io\&quot; modified=\&quot;2020-01-13T14:58:56.587Z\&quot; agent=\&quot;Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\&quot; etag=\&quot;4pLk0HureP59qFmJkydq\&quot; version=\&quot;12.5.1\&quot; type=\&quot;device\&quot;&gt;&lt;diagram id=\&quot;QYu6D7kPis8VRG7IZ91E\&quot; name=\&quot;Page-1\&quot;&gt;5Vpbc9soFP41ntl9SEaAbn6snbR9aGc7zcxudl8yRMIWDRYehGO7v36RhCwhZEdJa8ut85CIIzjAdy7fAWWEpovNB4GXyWceEzaCTrwZoZsRhMCFvvqTS7alZOxqwVzQWHeqBXf0O9FCR0tXNCaZ0VFyziRdmsKIpymJpCHDQvC12W3GmTnrEs+JJbiLMLOl/9BYJqU0hEEt/0joPKlmBv64fLPAVWe9kyzBMV83ROh2hKaCc1k+LTZTwnLwKlzKce/3vN0tTJBU9hlw//UTnwhxBYLPfz38B74GVyK6gm6p5hmzld6xXq3cVhCQNH6XI6laKU+VcBLjLCG5WqAaiVww/VgOJbEFab1GsNu5chnCF0SKreqyrrH1NF5JA9ZKJgjDkj6b6rE28XynbjfDF07VxNDR7rjTo50xQI6pIuMrERE9qonlC4pgS4/EYk6kpUc9NHZdiwpLvcZqjm0kBfqdbnIhEz7nKWa3tXQi+CqNC6s5qlX3+cT5UtvvG5Fyq2MQryQ3rUs2VN7nz9cOQrr9b67u2kXV+5uN1l80tlUjVfu9L7o6TlgJyrGwatZDi5Yx9gsRVIFGREN7W9bX+RRshZUP4asTTWHFA/3Cbmfu7aWGX7zaCYAVumq1D4+cPy2weMosF5FkI02LYkbnqXqOFEI5jpNnIiRVye+dfrGgcVw6D8nod/xYqMrBXuauXezIm4y8GyVh+JGwCY6e5oWjTTnjopgXzYqfnYXyOcjGwEYnb62/TplN2x0IBNsCWv2V8jcv9IxQBT+WSaoufDbLyFGCG3mDBrcR2IHXL65zoMucUAc28IO3hPYAYYzcQePYCmO8XFouYBp4nVBJ7pa42P5aVV5dPNwRaD2YWA9wTYIDjm43iBrADqb2XedIOKFXVSoRw1lGo70MBj3D0cGO0V5iMNPJ0Rj8wvy1x+9PU4y1PMwDb6zFkNNy1Srhn6gYA57lmEKppOSZPKwyIv7Ifz3Q+M9LIGT0Eh+DALhm6XzufAw68szp+Ngx0pQ/7lloAzNNQRS+lKY6MtKx+dntmabgkPQMOk7I3iSP6TzMLiCkwR74tXoV0ucewbYFi5TMaCYHr7MQRG8rtKw7h5/m8WEnXIMj5fomcSC3J1IgPBZSwB+UGq6bNexhYhggaw97qDon0g7gYdLeR70dRO75u1P2QIfq8ESkvafYb1+8+tBU0ffUAAJTkeu31nLsK9yO46w3qS/vLqO2gL98bVF9QWjYccpVCHLGOjjTNmGmuj6RCm39fWVGGWuJ+pu6i4nNzDZTC9Q5DIQ/h5y99nWRTc1O123R0S6L7Mtx/W3yUiyCxudmEvui0+bo3+ZTow8CA/4geOP1VlvRiT81Ipun/qZkfTlx5IfnFkf2cZYqCDaWSU59QPNbJOB5RzygqWb9rxOls9f/gIJu/wc=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://www.draw.io/js/viewer.min.js"></script>
</body>
</html>


'''

