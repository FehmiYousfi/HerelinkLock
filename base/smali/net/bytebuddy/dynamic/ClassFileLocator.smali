.class public interface abstract Lnet/bytebuddy/dynamic/ClassFileLocator;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$PackageDiscriminating;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForJarFile;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    }
.end annotation


# static fields
.field public static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"


# virtual methods
.method public abstract locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
