import Tools.GenSmallStages
import InitE.SmallStages.Oracles859
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 859 InitE.WordStages.source859.2.1 InitE.WordStages.source859.2.2 InitE.SmallStages.Oracles859.oracle859
