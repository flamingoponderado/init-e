import Tools.GenSmallStages
import InitE.SmallStages.Oracles648
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 648 InitE.WordStages.source648.2.1 InitE.WordStages.source648.2.2 InitE.SmallStages.Oracles648.oracle648
