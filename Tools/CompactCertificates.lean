import Lean

/-- Generators propose literals; the generated reflexivity terms are still
checked by the kernel. Import the tactic in every generated proof module. -/
def writeCompactCertificate (path : System.FilePath) (contents : String) : IO Unit :=
  IO.FS.writeFile path
    (if contents.contains "kernel_rfl" then "import InitE.CompactComputation\n" ++
      (if contents.contains "Flapjack.WordAlloc.joinIte" then "import InitE.DeadBranchComputation\n" else "") ++
      (if contents.contains "InitE.SmallSsaKernelComputation.fullSsaStructural_eq" then "import InitE.SmallSsaKernelComputation\n" else "") ++
      (if contents.contains "InitE.CompilerStages.fullCompile_expanded" then "import InitE.CompilerStages\n" else "") ++
      contents else contents)
