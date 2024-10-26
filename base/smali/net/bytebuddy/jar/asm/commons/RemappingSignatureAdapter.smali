.class public Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;


# instance fields
.field private className:Ljava/lang/String;

.field private final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

.field private final v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;-><init>(ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitBaseType(C)V

    return-void
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitEnd()V

    return-void
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument()V

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingSignatureAdapter;->v:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    return-void
.end method
