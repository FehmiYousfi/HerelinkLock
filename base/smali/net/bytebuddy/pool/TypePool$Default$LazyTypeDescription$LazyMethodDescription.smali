.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyMethodDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;
    }
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field

.field private final exceptionTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final exceptionTypeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final genericSignature:Ljava/lang/String;

.field private final internalName:Ljava/lang/String;

.field private final modifiers:I

.field private final parameterAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parameterModifiers:[Ljava/lang/Integer;

.field private final parameterNames:[Ljava/lang/String;

.field private final parameterTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final parameterTypeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final returnTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final returnTypeDescriptor:Ljava/lang/String;

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

.field private final typeVariableAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeVariableBoundAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;",
            ">;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p7

    move-object v2, p1

    .line 6430
    iput-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;-><init>()V

    move v2, p3

    .line 6431
    iput v2, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->modifiers:I

    move-object v2, p2

    .line 6432
    iput-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->internalName:Ljava/lang/String;

    .line 6433
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    .line 6434
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    .line 6435
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    .line 6436
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->returnTypeDescriptor:Ljava/lang/String;

    .line 6437
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterTypeDescriptors:Ljava/util/List;

    .line 6438
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 6439
    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterTypeDescriptors:Ljava/util/List;

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v5, p5

    .line 6441
    iput-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->genericSignature:Ljava/lang/String;

    move-object v3, p6

    .line 6442
    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    if-nez v1, :cond_2

    .line 6444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->exceptionTypeDescriptors:Ljava/util/List;

    :cond_1
    move-object/from16 v1, p8

    goto :goto_2

    .line 6446
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->exceptionTypeDescriptors:Ljava/util/List;

    .line 6447
    array-length v3, v1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 6448
    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->exceptionTypeDescriptors:Ljava/util/List;

    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v6

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6451
    :goto_2
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p9

    .line 6452
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p10

    .line 6453
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->returnTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p11

    .line 6454
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p12

    .line 6455
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p13

    .line 6456
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->receiverTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p14

    .line 6457
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->annotationTokens:Ljava/util/List;

    move-object/from16 v1, p15

    .line 6458
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterAnnotationTokens:Ljava/util/Map;

    .line 6459
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterNames:[Ljava/lang/String;

    .line 6460
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/Integer;

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterModifiers:[Ljava/lang/Integer;

    .line 6461
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 6463
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;

    .line 6464
    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterNames:[Ljava/lang/String;

    invoke-virtual {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6465
    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterModifiers:[Ljava/lang/Integer;

    invoke-virtual {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->getModifiers()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v1, p17

    .line 6469
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    .line 6296
    invoke-direct/range {p0 .. p17}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    return-void
.end method

.method static synthetic access$2500(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/String;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/Integer;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterModifiers:[Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2700(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/List;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterTypeDescriptors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterTypeAnnotationTokens:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2900(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    return-object p0
.end method

.method static synthetic access$3000(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->parameterAnnotationTokens:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3100(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;
    .locals 0

    .line 6296
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->receiverTypeAnnotationTokens:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 6489
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->access$2300(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->annotationTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asList(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 6296
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 6499
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 6514
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 6479
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->exceptionTypeDescriptors:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->access$2300(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;->resolveExceptionTypes(Ljava/util/List;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1

    .line 6541
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->genericSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 6494
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 6504
    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->modifiers:I

    return v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 6484
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/pool/TypePool$1;)V

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    .line 6519
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6520
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0

    .line 6521
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6522
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6524
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isGenerified()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;

    invoke-direct {v1, p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;

    invoke-direct {v1, p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_0
    return-object v1

    .line 6528
    :cond_2
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isStatic()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isGenerified()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_1
    return-object v0

    .line 6533
    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->isGenerified()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)V

    :goto_2
    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    .line 6474
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->returnTypeDescriptor:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->access$2300(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->returnTypeAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;->resolveReturnType(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 6509
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->this$0:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->access$2300(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, p0, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;->resolveTypeVariables(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/Map;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method
