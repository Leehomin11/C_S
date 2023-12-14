<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.lang.management.ManagementFactory"%>
<%@ page import="java.lang.management.OperatingSystemMXBean"%>
<%@ page import="java.text.DecimalFormat"%>
<%
    OperatingSystemMXBean osBean = ManagementFactory.getOperatingSystemMXBean();
    double cpuUsage = osBean.getSystemLoadAverage();
    DecimalFormat df = new DecimalFormat("0.##");
    String formattedCpuUsage = df.format(cpuUsage);
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link href="style.css" rel="stylesheet" type="text/css">
    <link href="./img/CS.png" rel="icon">
    <title>C.S</title>
  </head>
  <body>
  <div class="box">
  <span><div class="text"><strong>C.S</strong></div></span>
      <h1>Check CPU usage</h1>
    <p><b>CPU usage:</b> <%= formattedCpuUsage %> %</p>
    <h1>Check your computer specs</h1>
    <p><b>Operating System:</b> <%= System.getProperty("os.name") %></p>
    <p><b>Java version:</b> <%= System.getProperty("java.version") %></p>
    <p><b>processor architecture:</b> <%= System.getProperty("os.arch") %></p>
    <p>
      <b>Number of processors:</b> <%= Runtime.getRuntime().availableProcessors() %>
    </p>
    <p>
      <b>total memory:</b> <%= Runtime.getRuntime().totalMemory() / (1024 * 1024)
      %> MB
    </p>
    <p>
      <b>available memory:</b> <%= Runtime.getRuntime().freeMemory() / (1024 *
      1024) %> MB
    </p>
    </div>
    <script src="index.js"></script>
  </body>
</html>
