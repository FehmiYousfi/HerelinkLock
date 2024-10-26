.class Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;
.super Ljava/lang/Object;
.source "NetworkInterfacesUtil.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/NetworkInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private final excludeFilter:Ljava/util/regex/Pattern;

.field private final filter:Ljava/util/regex/Pattern;

.field private nextInterface:Ljava/net/NetworkInterface;

.field private final source:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Enumeration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->source:Ljava/util/Enumeration;

    const-string p1, "COAP_NETWORK_INTERFACES"

    .line 150
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->getConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "COAP_NETWORK_INTERFACES_EXCLUDE"

    .line 151
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->getConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_1

    .line 155
    :cond_2
    :goto_0
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->access$000()Ljava/util/regex/Pattern;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 160
    :cond_3
    iput-object v1, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->filter:Ljava/util/regex/Pattern;

    .line 161
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->excludeFilter:Ljava/util/regex/Pattern;

    .line 162
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->next()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Enumeration;Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;-><init>(Ljava/util/Enumeration;)V

    return-void
.end method

.method private next()V
    .locals 3

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->nextInterface:Ljava/net/NetworkInterface;

    .line 179
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->source:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->source:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 181
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    :try_start_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->filter:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->filter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->excludeFilter:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->excludeFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    :cond_1
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->nextInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    :cond_2
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "skip {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->nextInterface:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->nextElement()Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/NetworkInterface;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->nextInterface:Ljava/net/NetworkInterface;

    .line 173
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;->next()V

    return-object v0
.end method
