.class Lnet/bytebuddy/jar/asm/CurrentFrame;
.super Lnet/bytebuddy/jar/asm/Frame;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/Frame;-><init>()V

    return-void
.end method


# virtual methods
.method a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    new-instance p1, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lnet/bytebuddy/jar/asm/CurrentFrame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Frame;I)Z

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/CurrentFrame;->b(Lnet/bytebuddy/jar/asm/Frame;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/CurrentFrame;->b:Lnet/bytebuddy/jar/asm/Label;

    iput p2, p1, Lnet/bytebuddy/jar/asm/Label;->f:I

    return-void
.end method
