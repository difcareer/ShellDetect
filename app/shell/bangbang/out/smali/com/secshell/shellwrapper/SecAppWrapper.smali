.class public Lcom/secshell/shellwrapper/SecAppWrapper;
.super Landroid/app/Application;
.source "ApplicationTemplate.java"


# static fields
.field public static realApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    .line 17
    const-string v0, "SecShell"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/secshell/shellwrapper/Helper;->PPATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/secshell/shellwrapper/Helper;->PPATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/secshell/shellwrapper/SecAppWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/secshell/shellwrapper/Helper;->APPNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sput-object v1, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    .line 27
    sget-object v1, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    invoke-static {v1, p1}, Lcom/secshell/shellwrapper/Helper;->attach(Landroid/app/Application;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    goto :goto_0
.end method

.method public huawei_share()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v21, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v22, "Huawei"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    sget-object v21, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v22, "Honor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 150
    :cond_0
    return-void

    .line 87
    :cond_1
    const-string v21, "android.app.ActivityThread"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 88
    .local v4, "at_cls":Ljava/lang/Class;
    const-string v21, "currentActivityThread"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 89
    .local v5, "cat_mth":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 93
    .local v6, "cat_obj":Ljava/lang/Object;
    const-string v21, "getSystemContext"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 94
    .local v10, "gsc_mth":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 97
    .local v8, "ctml_obj":Ljava/lang/Object;
    const-string v21, "android.app.ContextImpl"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 99
    .local v7, "ctml_cls":Ljava/lang/Class;
    const-string v21, "sSharedPrefs"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 101
    .local v17, "sSharedPrefs_fld":Ljava/lang/reflect/Field;
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 106
    .local v19, "spr_obj":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "HashMap"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 111
    if-eqz v19, :cond_0

    const-string v21, "{}"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v16, v19

    .line 119
    check-cast v16, Landroid/util/ArrayMap;

    .line 122
    .local v16, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v21, Lcom/secshell/shellwrapper/Helper;->PKGNAME:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "aa":Ljava/lang/Object;
    move-object/from16 v18, v3

    .line 125
    check-cast v18, Landroid/util/ArrayMap;

    .line 127
    .local v18, "s_map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 128
    .local v11, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 129
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 130
    .local v9, "entry":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 131
    .local v12, "key":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    .line 135
    .local v20, "val":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 136
    .local v2, "SharedPreferencesImpl_cls":Ljava/lang/Class;
    const-string v21, "mMode"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 137
    .local v14, "mMode_filed":Ljava/lang/reflect/Field;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 140
    .local v15, "mMode_value":Ljava/lang/Object;
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 142
    .local v15, "mMode_value":Ljava/lang/Boolean;
    const-string v21, "startLoadFromDisk"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 144
    .local v13, "loadFDL_mth":Ljava/lang/reflect/Method;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/secshell/shellwrapper/SecAppWrapper;->huawei_share()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/secshell/shellwrapper/Helper;->attach(Landroid/app/Application;Landroid/content/Context;)V

    .line 43
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 45
    :cond_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 66
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    .line 69
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 50
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 53
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 73
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 74
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/secshell/shellwrapper/SecAppWrapper;->realApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
