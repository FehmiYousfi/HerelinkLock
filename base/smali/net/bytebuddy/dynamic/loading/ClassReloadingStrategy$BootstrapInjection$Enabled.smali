.class public Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;
.super Ljava/lang/Object;
.source "ClassReloadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation


# instance fields
.field private final folder:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;->folder:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 491
    instance-of p1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 491
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;->folder:Ljava/io/File;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;->folder:Ljava/io/File;

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

    .line 491
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;->folder:Ljava/io/File;

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

.method public make(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    .line 510
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;->folder:Ljava/io/File;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-static {v0, v1, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->of(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p1

    return-object p1
.end method