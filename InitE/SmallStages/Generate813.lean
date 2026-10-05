import Tools.GenSmallStages
import InitE.SmallStages.Oracles813
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 813 InitE.WordStages.source813.2.1 InitE.WordStages.source813.2.2 InitE.SmallStages.Oracles813.oracle813
