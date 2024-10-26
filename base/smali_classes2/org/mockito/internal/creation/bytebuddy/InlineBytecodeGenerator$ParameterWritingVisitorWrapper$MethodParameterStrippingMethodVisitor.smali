.class Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$MethodParameterStrippingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "InlineBytecodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodParameterStrippingMethodVisitor"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    .line 229
    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public visitParameter(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
