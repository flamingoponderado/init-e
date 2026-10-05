import Tools.GenSmallStages
import InitE.SmallStages.Oracles578
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 578 InitE.WordStages.source578.2.1 InitE.WordStages.source578.2.2 InitE.SmallStages.Oracles578.oracle578
