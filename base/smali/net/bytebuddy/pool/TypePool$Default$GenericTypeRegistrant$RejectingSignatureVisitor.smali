.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant$RejectingSignatureVisitor;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectingSignatureVisitor"
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Unexpected token in generic signature"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x50000

    .line 1787
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitBaseType(C)V
    .locals 1

    .line 1832
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1797
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 1

    .line 1847
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitEnd()V
    .locals 2

    .line 1867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 1

    .line 1792
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 1

    .line 1852
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1812
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1802
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1817
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1822
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    .line 1862
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 1857
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 1

    .line 1837
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
