.class final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1467
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassInjector$1;)V

    return-void
.end method


# virtual methods
.method protected inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .locals 0

    .line 1470
    invoke-interface {p1, p2}, Ljava/lang/instrument/Instrumentation;->appendToBootstrapClassLoaderSearch(Ljava/util/jar/JarFile;)V

    return-void
.end method
