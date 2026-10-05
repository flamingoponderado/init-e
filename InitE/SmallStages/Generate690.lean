import Tools.GenSmallStages
import InitE.SmallStages.Oracles690
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 690 InitE.WordStages.source690.2.1 InitE.WordStages.source690.2.2 InitE.SmallStages.Oracles690.oracle690
