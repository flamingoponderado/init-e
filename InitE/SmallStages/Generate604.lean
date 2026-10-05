import Tools.GenSmallStages
import InitE.SmallStages.Oracles604
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 604 InitE.WordStages.source604.2.1 InitE.WordStages.source604.2.2 InitE.SmallStages.Oracles604.oracle604
