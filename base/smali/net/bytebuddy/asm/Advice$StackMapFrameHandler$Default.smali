.class public Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# instance fields
.field private currentFrameDivergence:I

.field private final expandFrames:Z

.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final requiredTypes:Lnet/bytebuddy/description/type/TypeList;

.field protected final yieldedTypes:Lnet/bytebuddy/description/type/TypeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1016
    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;Z)V
    .locals 0

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1063
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1064
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 1065
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 1066
    iput-boolean p5, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    return-void
.end method

.method static synthetic access$400(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)Z
    .locals 0

    .line 1011
    iget-boolean p0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    return p0
.end method

.method static synthetic access$500(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)I
    .locals 0

    .line 1011
    iget p0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    return p0
.end method

.method static synthetic access$600()[Ljava/lang/Object;
    .locals 1

    .line 1011
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    return-object v0
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/ClassFileVersion;II)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "II)",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;"
        }
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-nez p5, :cond_2

    .line 1088
    sget-object p5, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p4, p5}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    new-instance v3, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v3, p2}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    new-instance v4, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v4, p3}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move v5, p2

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;Z)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    :goto_2
    return-object p4
.end method

.method protected static toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 1

    .line 1100
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 1101
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 1102
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 1103
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1104
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    return-object p0

    .line 1108
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    return-object p0

    .line 1110
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1111
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    return-object p0

    .line 1113
    :cond_3
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1105
    :cond_4
    :goto_0
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public bindEntry(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 7

    .line 1119
    new-instance v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;

    new-instance v3, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v3}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->ENTRY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;)V

    return-object v6
.end method

.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 7

    .line 1124
    new-instance v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;

    new-instance v3, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    new-instance v4, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v4}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->EXIT:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;)V

    return-object v6
.end method

.method public getReaderHint()I
    .locals 1

    .line 1129
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V
    .locals 7

    .line 1237
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x3

    .line 1239
    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v6

    array-length v5, v6

    move-object v1, p1

    move-object v4, v6

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1241
    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result p2

    new-array v3, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1243
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v2, p2, 0x1

    .line 1244
    invoke-static {v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, p2

    move p2, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 1246
    array-length v2, v3

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v4, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1249
    :cond_3
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-static {p2, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    .line 1228
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_0

    const/4 v2, 0x4

    .line 1229
    sget-object v4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v4

    const/4 v5, 0x1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1231
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1264
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1265
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v6, v0, [Ljava/lang/Object;

    .line 1267
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1270
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    .line 1271
    invoke-static {v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v2

    move v2, v4

    goto :goto_1

    .line 1273
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v3, v2, 0x1

    .line 1274
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v2

    move v2, v3

    goto :goto_2

    .line 1277
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array v8, p2, [Ljava/lang/Object;

    .line 1278
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v2, p3, 0x1

    .line 1279
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, p3

    move p3, v2

    goto :goto_3

    .line 1281
    :cond_3
    iget-boolean p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-eqz p2, :cond_4

    const/4 p2, -0x1

    move v4, p2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    array-length v5, v6

    array-length v7, v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 1282
    iput v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    return-void
.end method

.method public injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 13

    .line 1213
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1214
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 1215
    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v6

    array-length v5, v6

    move-object v1, p1

    move-object v4, v6

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v8, 0x4

    .line 1217
    sget-object v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v9, v10

    const/4 v11, 0x1

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v12, v0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1220
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1222
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1220
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 11

    move-object v10, p0

    .line 1141
    sget-object v2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->COPY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    iget-object v3, v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method protected translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move v2, p5

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v2, v1, :cond_4

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frame type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1182
    :cond_1
    iget v1, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    sub-int v1, v1, p6

    iput v1, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    goto :goto_0

    .line 1179
    :cond_2
    iget v1, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    add-int v1, v1, p6

    iput v1, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    :cond_3
    :goto_0
    move/from16 v3, p6

    move-object/from16 v4, p7

    goto :goto_2

    .line 1187
    :cond_4
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    sub-int v1, p6, v1

    .line 1188
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v4

    xor-int/2addr v4, v3

    sub-int/2addr v1, v4

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1189
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1190
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v4

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 1191
    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result v4

    add-int/2addr v1, v4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1192
    iget-object v5, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    move-object v4, p2

    move-object v7, p3

    move-object/from16 v8, p7

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->copy(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    .line 1193
    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v7, v4, 0x1

    .line 1194
    invoke-static {v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v4

    move v4, v7

    goto :goto_1

    .line 1197
    :cond_5
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v5

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v6

    xor-int/2addr v3, v6

    add-int/2addr v5, v3

    array-length v3, v1

    sub-int/2addr v3, v4

    move-object/from16 v6, p7

    .line 1196
    invoke-static {v6, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    array-length v3, v1

    .line 1203
    array-length v5, v1

    sub-int/2addr v5, v4

    iput v5, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    move-object v4, v1

    :goto_2
    move-object v1, p1

    move v2, p5

    move/from16 v5, p8

    move-object/from16 v6, p9

    .line 1208
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method
