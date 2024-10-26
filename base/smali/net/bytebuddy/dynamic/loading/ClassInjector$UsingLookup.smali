.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;
.super Ljava/lang/Object;
.source "ClassInjector.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

.field private static final PACKAGE_LOOKUP:I = 0x8


# instance fields
.field private final lookup:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 859
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;
    .locals 3

    .line 887
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    invoke-interface {v0, p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->lookupModes(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 894
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->dropLookupMode(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 892
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookup does not imply package-access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a method handle lookup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The current VM does not support class definition via method handle lookups"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 853
    instance-of p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 853
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

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

    .line 853
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

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

.method public inject(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 909
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 910
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookupType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v3, v4, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->defineClass(Ljava/lang/Object;[B)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 911
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be defined in its package using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public lookupType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 903
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->lookupType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
