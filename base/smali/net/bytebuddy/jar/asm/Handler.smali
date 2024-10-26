.class Lnet/bytebuddy/jar/asm/Handler;
.super Ljava/lang/Object;


# instance fields
.field a:Lnet/bytebuddy/jar/asm/Label;

.field b:Lnet/bytebuddy/jar/asm/Label;

.field c:Lnet/bytebuddy/jar/asm/Label;

.field d:Ljava/lang/String;

.field e:I

.field f:Lnet/bytebuddy/jar/asm/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v0, p1, p2}, Lnet/bytebuddy/jar/asm/Handler;->a(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget v0, v0, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget v2, p1, Lnet/bytebuddy/jar/asm/Label;->c:I

    if-nez p2, :cond_1

    const v3, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v3, p2, Lnet/bytebuddy/jar/asm/Label;->c:I

    :goto_0
    if-ge v2, v1, :cond_5

    if-le v3, v0, :cond_5

    if-gt v2, v0, :cond_3

    if-lt v3, v1, :cond_2

    iget-object p0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_3
    if-lt v3, v1, :cond_4

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_4
    new-instance v0, Lnet/bytebuddy/jar/asm/Handler;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Handler;-><init>()V

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Handler;->d:Ljava/lang/String;

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Handler;->d:Ljava/lang/String;

    iget p2, p0, Lnet/bytebuddy/jar/asm/Handler;->e:I

    iput p2, v0, Lnet/bytebuddy/jar/asm/Handler;->e:I

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    :cond_5
    :goto_1
    return-object p0
.end method
