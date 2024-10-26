.class public Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;
.super Ljava/lang/Object;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;
    }
.end annotation


# instance fields
.field private final argumentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

.field private final returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 2171
    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    sget-object v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    sget-object v2, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;

    .line 2173
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2171
    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;)V"
        }
    .end annotation

    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2186
    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    .line 2187
    iput-object p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2188
    iput-object p3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 4

    .line 2208
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    .line 2210
    invoke-static {v3, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method

.method public appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;"
        }
    .end annotation

    .line 2201
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    .line 2203
    invoke-static {v3, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 2148
    instance-of p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2148
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 2148
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;
    .locals 4

    .line 2193
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2194
    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Lnet/bytebuddy/description/method/MethodDescription;)V

    return-object v0
.end method

.method public bridge synthetic make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target;
    .locals 0

    .line 2148
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 2

    .line 2236
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    .line 2237
    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public withNameProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 3

    .line 2222
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method

.method public withReturnTypeProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 3

    .line 2229
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method

.method public withoutArguments()Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 4

    .line 2215
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method
