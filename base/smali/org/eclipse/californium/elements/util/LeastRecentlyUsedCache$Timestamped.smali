.class public final Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timestamped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final lastUpdate:J

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J)V"
        }
    .end annotation

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    .line 1031
    iput-wide p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->lastUpdate:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1058
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1061
    :cond_2
    check-cast p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    .line 1062
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->lastUpdate:J

    iget-wide v4, p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->lastUpdate:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 1065
    :cond_3
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 1066
    iget-object p1, p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 1068
    :cond_5
    iget-object p1, p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLastUpdate()J
    .locals 2

    .line 1039
    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->lastUpdate:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1044
    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->lastUpdate:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1045
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1046
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->lastUpdate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
