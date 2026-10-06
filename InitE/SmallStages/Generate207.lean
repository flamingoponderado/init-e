import Tools.GenSmallStages
import InitE.SmallStages.Oracles207
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 207 InitE.WordStages.source207.2.1 InitE.WordStages.source207.2.2 InitE.SmallStages.Oracles207.oracle207
