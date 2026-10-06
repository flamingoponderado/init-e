import Tools.GenSmallStages
import InitE.SmallStages.Oracles529
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 529 InitE.WordStages.source529.2.1 InitE.WordStages.source529.2.2 InitE.SmallStages.Oracles529.oracle529
