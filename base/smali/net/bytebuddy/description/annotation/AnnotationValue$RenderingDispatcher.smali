.class public abstract enum Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.super Ljava/lang/Enum;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RenderingDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;


# instance fields
.field private final closingBrace:C

.field private final openingBrace:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;

    const/4 v1, 0x0

    const-string v2, "LEGACY_VM"

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-direct {v0, v2, v1, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 108
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$2;

    const/4 v2, 0x1

    const-string v3, "JAVA_9_CAPABLE_VM"

    const/16 v4, 0x7b

    const/16 v5, 0x7d

    invoke-direct {v0, v3, v2, v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$2;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 68
    sget-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 157
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    :goto_0
    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput-char p3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->openingBrace:C

    .line 179
    iput-char p4, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->closingBrace:C

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ICCLnet/bytebuddy/description/annotation/AnnotationValue$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;-><init>(Ljava/lang/String;ICC)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    .locals 1

    .line 68
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    .locals 1

    .line 68
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-object v0
.end method


# virtual methods
.method public toSourceString(B)Ljava/lang/String;
    .locals 0

    .line 199
    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toSourceString(C)Ljava/lang/String;
.end method

.method public abstract toSourceString(D)Ljava/lang/String;
.end method

.method public abstract toSourceString(F)Ljava/lang/String;
.end method

.method public toSourceString(I)Ljava/lang/String;
    .locals 0

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toSourceString(J)Ljava/lang/String;
.end method

.method public abstract toSourceString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public toSourceString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->openingBrace:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :cond_1
    iget-char p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->closingBrace:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method

.method public toSourceString(S)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(Z)Ljava/lang/String;
    .locals 0

    .line 189
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
