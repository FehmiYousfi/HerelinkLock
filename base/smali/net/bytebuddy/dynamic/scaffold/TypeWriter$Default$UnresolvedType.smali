.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
.super Ljava/lang/Object;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UnresolvedType"
.end annotation


# instance fields
.field private final auxiliaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation
.end field

.field private final binaryRepresentation:[B

.field final synthetic this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)V"
        }
    .end annotation

    .line 1668
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    .line 1670
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
    .locals 1

    .line 1702
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1709
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1710
    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;

    .line 1711
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    .line 1712
    invoke-direct {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->getOuter()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    .line 1713
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method protected getBinaryRepresentation()[B
    .locals 1

    .line 1693
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1718
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1719
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1720
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected toDynamicType(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TS;>;"
        }
    .end annotation

    .line 1680
    new-instance v6, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypes:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    .line 1683
    invoke-static {v0, v4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)V

    return-object v6
.end method
