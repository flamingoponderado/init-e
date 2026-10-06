import Tools.GenSmallStages
import InitE.SmallStages.Oracles723
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 723 InitE.WordStages.source723.2.1 InitE.WordStages.source723.2.2 InitE.SmallStages.Oracles723.oracle723
