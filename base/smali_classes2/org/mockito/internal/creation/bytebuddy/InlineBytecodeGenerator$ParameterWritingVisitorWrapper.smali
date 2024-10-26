.class Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;
.super Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;
.source "InlineBytecodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterWritingVisitorWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$MethodParameterStrippingMethodVisitor;,
        Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;-><init>()V

    .line 183
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;->type:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    .line 195
    invoke-interface {p3}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p1

    sget-object p3, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p3}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;

    new-instance p3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;->type:Ljava/lang/Class;

    invoke-direct {p3, p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$1;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method
