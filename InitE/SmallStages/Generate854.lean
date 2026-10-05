import Tools.GenSmallStages
import InitE.SmallStages.Oracles854
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 854 InitE.WordStages.source854.2.1 InitE.WordStages.source854.2.2 InitE.SmallStages.Oracles854.oracle854
