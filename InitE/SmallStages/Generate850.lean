import Tools.GenSmallStages
import InitE.SmallStages.Oracles850
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 850 InitE.WordStages.source850.2.1 InitE.WordStages.source850.2.2 InitE.SmallStages.Oracles850.oracle850
