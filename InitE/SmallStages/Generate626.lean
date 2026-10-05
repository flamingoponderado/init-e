import Tools.GenSmallStages
import InitE.SmallStages.Oracles626
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 626 InitE.WordStages.source626.2.1 InitE.WordStages.source626.2.2 InitE.SmallStages.Oracles626.oracle626
