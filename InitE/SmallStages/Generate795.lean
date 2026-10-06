import Tools.GenSmallStages
import InitE.SmallStages.Oracles795
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 795 InitE.WordStages.source795.2.1 InitE.WordStages.source795.2.2 InitE.SmallStages.Oracles795.oracle795
