.class public Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAJOR_1:I = 0xfe

.field public static final MINOR_0:I = 0xff

.field public static final MINOR_2:I = 0xfd

.field public static final VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field public static final VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final major:I

.field private final minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    const/16 v1, 0xfe

    const/16 v2, 0xfd

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;-><init>(II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 69
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;-><init>(II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    .line 85
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    return-void
.end method

.method public static valueOf(II)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 2

    const/16 v0, 0xfe

    if-ne p0, v0, :cond_0

    const/16 v1, 0xfd

    if-ne p1, v1, :cond_0

    .line 173
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 175
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object p0

    .line 177
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;-><init>(II)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 2

    const-string v0, "\\."

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 190
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0xff

    const/4 v1, 0x1

    .line 191
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    rsub-int p0, p0, 0xff

    .line 192
    invoke-static {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->valueOf(II)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->compareTo(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 121
    :cond_0
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v2, :cond_3

    .line 122
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v2

    if-ge v1, v2, :cond_1

    return v3

    .line 124
    :cond_1
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result p1

    if-le v1, p1, :cond_2

    return v4

    :cond_2
    return v0

    .line 129
    :cond_3
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result p1

    if-ge v0, p1, :cond_4

    return v3

    :cond_4
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 151
    :cond_1
    instance-of v2, p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    if-nez v2, :cond_2

    return v1

    .line 154
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 155
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    iget v3, p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    iget p1, p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getMajor()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 140
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 141
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->major:I

    rsub-int v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->minor:I

    rsub-int v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
