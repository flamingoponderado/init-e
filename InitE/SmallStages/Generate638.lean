import Tools.GenSmallStages
import InitE.SmallStages.Oracles638
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 638 InitE.WordStages.source638.2.1 InitE.WordStages.source638.2.2 InitE.SmallStages.Oracles638.oracle638
