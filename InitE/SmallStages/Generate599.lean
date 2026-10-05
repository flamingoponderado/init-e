import Tools.GenSmallStages
import InitE.SmallStages.Oracles599
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 599 InitE.WordStages.source599.2.1 InitE.WordStages.source599.2.2 InitE.SmallStages.Oracles599.oracle599
