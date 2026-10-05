import Tools.GenSmallStages
import InitE.SmallStages.Oracles472
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 472 InitE.WordStages.source472.2.1 InitE.WordStages.source472.2.2 InitE.SmallStages.Oracles472.oracle472
