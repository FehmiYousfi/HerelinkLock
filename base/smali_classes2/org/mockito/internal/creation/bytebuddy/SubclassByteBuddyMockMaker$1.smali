.class Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;
.super Ljava/lang/Object;
.source "SubclassByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/plugins/MockMaker$TypeMockability;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;Ljava/lang/Class;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mockable()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nonMockableReason()Ljava/lang/String;
    .locals 3

    .line 152
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->mockable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "primitive type"

    return-object v0

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "final class"

    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "not handled type"

    aput-object v2, v0, v1

    .line 161
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
