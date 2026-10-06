import Tools.GenSmallStages
import InitE.SmallStages.Oracles462
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 462 InitE.WordStages.source462.2.1 InitE.WordStages.source462.2.2 InitE.SmallStages.Oracles462.oracle462
