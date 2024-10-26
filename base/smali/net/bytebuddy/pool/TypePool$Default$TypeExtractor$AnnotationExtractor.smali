.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnnotationExtractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;
    }
.end annotation


# instance fields
.field private final annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

.field private final componentTypeLocator:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;

.field final synthetic this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;ILjava/util/Map;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;",
            ")V"
        }
    .end annotation

    .line 7103
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;

    invoke-direct {v0, p2, p3, p4}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-direct {p0, p1, v0, p5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;",
            ")V"
        }
    .end annotation

    .line 7088
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;

    invoke-direct {v0, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, p1, v0, p4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V
    .locals 0

    .line 7112
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    const/high16 p1, 0x50000

    .line 7113
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(I)V

    .line 7114
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    .line 7115
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->componentTypeLocator:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;

    return-void
.end method

.method static synthetic access$3400(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;)Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    .locals 0

    .line 7068
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    return-object p0
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 7120
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    instance-of v1, p2, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v2, v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    check-cast p2, Lnet/bytebuddy/jar/asm/Type;

    invoke-direct {v1, v2, p2}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_0

    .line 7122
    :cond_0
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/Object;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    .line 7120
    :goto_0
    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    .line 7132
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;

    invoke-direct {v2, p0, p2, p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {p1, v3, p2}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    .line 7138
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->componentTypeLocator:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;

    invoke-interface {v3, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;->bind(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;)V

    sget-object p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 7143
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->onComplete()V

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7127
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v2, v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v1, v2, p2, p3}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    return-void
.end method
