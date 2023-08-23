<?php
session_start();
include("../Functions/myFunction.php");
include("../Middleware/admin.php");
include("Includes/header.php");
?>
<main class="mt-5 pt-5 ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Blogs</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered table-striped" >
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Content</th>
                                    <th>Created At</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $blog = getAll("blog");
                                if (mysqli_num_rows($blog) > 0) {
                                    foreach ($blog as $items) {
                                ?>
                                        <tr>
                                            <td><?= $items['blog_id']; ?></td>
                                            <td><img src="../Assets/<?= $items['image']; ?>" width="50px" height="50px" alt=""></td>
                                            <td><?= $items['title']; ?></td>
                                            <td>
                                            <a href="" data-bs-toggle="modal"
                                                data-bs-target="#<?php echo $idModelDes ?>">
                                                Xem</a>
                                            </td>
                                            <td><?= $items['created_at']; ?></td>
                                            <td>
                                                <a href="editBlog.php?id=<?= $items['blog_id']; ?>" class="btn btn-sm btn-primary">Edit</a>
                                            </td>
                                            <td>
                                            <form action="code.php" method="POST">
                                                    <input type="hidden" name="blog_id" value="<?= $items['blog_id']; ?>">
                                                    <button type="submit" class="btn btn-sm btn-danger" name="delete_blog">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                <?php
                                    }
                                } else {
                                    echo "No record found";
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</main>
<?php
include("Includes/footer.php");
?>