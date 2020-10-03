from diagrams import Diagram, Cluster
from diagrams.aws.devtools import Codecommit
from diagrams.onprem.vcs import Git

with Diagram("AWS CodeCommit Repository", show=False, direction="TB"):

    Codecommit("codecommit repository") << Git("git mirror")
