.class public Lnet/bytebuddy/utility/RandomString;
.super Ljava/lang/Object;
.source "RandomString.java"


# static fields
.field public static final DEFAULT_LENGTH:I = 0x8

.field private static final KEY_BITS:I

.field private static final SYMBOL:[C


# instance fields
.field private final length:I

.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_2

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    .line 40
    sget-object v0, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 41
    sget-object v1, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    sub-int/2addr v0, v1

    sput v0, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 59
    invoke-direct {p0, v0}, Lnet/bytebuddy/utility/RandomString;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 71
    iput p1, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    .line 72
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/RandomString;->random:Ljava/util/Random;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A random string\'s length cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static hashOf(I)Ljava/lang/String;
    .locals 7

    .line 102
    sget v0, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    const/16 v1, 0x20

    div-int v2, v1, v0

    rem-int v0, v1, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    new-array v0, v2, [C

    .line 103
    :goto_1
    array-length v2, v0

    if-ge v3, v2, :cond_1

    .line 104
    sget-object v2, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    sget v4, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    mul-int v5, v3, v4

    ushr-int v5, p0, v5

    const/4 v6, -0x1

    rsub-int/lit8 v4, v4, 0x20

    ushr-int v4, v6, v4

    and-int/2addr v4, v5

    aget-char v2, v2, v4

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static make()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    .line 81
    invoke-static {v0}, Lnet/bytebuddy/utility/RandomString;->make(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static make(I)Ljava/lang/String;
    .locals 1

    .line 91
    new-instance v0, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/RandomString;-><init>(I)V

    invoke-virtual {v0}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public nextString()Ljava/lang/String;
    .locals 5

    .line 115
    iget v0, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 116
    :goto_0
    iget v2, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    if-ge v1, v2, :cond_0

    .line 117
    sget-object v2, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    iget-object v3, p0, Lnet/bytebuddy/utility/RandomString;->random:Ljava/util/Random;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
