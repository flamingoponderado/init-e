import Tools.GenSmallStages
import InitE.SmallStages.Oracles602
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 602 InitE.WordStages.source602.2.1 InitE.WordStages.source602.2.2 InitE.SmallStages.Oracles602.oracle602
