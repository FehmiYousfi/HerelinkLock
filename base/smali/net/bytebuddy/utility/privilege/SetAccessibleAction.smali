.class public Lnet/bytebuddy/utility/privilege/SetAccessibleAction;
.super Ljava/lang/Object;
.source "SetAccessibleAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/AccessibleObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final accessibleObject:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    iget-object p1, p1, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 13
    iget-object v0, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->run()Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    iget-object v0, p0, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    return-object v0
.end method
