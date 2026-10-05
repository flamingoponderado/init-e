import Tools.GenSmallStages
import InitE.SmallStages.Oracles319
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 319 InitE.WordStages.source319.2.1 InitE.WordStages.source319.2.2 InitE.SmallStages.Oracles319.oracle319
