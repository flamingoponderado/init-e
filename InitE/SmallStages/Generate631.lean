import Tools.GenSmallStages
import InitE.SmallStages.Oracles631
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 631 InitE.WordStages.source631.2.1 InitE.WordStages.source631.2.2 InitE.SmallStages.Oracles631.oracle631
