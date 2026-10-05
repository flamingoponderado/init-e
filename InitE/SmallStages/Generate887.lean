import Tools.GenSmallStages
import InitE.SmallStages.Oracles887
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 887 InitE.WordStages.source887.2.1 InitE.WordStages.source887.2.2 InitE.SmallStages.Oracles887.oracle887
