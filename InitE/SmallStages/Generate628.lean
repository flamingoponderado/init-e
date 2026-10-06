import Tools.GenSmallStages
import InitE.SmallStages.Oracles628
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 628 InitE.WordStages.source628.2.1 InitE.WordStages.source628.2.2 InitE.SmallStages.Oracles628.oracle628
