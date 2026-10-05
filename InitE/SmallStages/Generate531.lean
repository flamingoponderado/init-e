import Tools.GenSmallStages
import InitE.SmallStages.Oracles531
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 531 InitE.WordStages.source531.2.1 InitE.WordStages.source531.2.2 InitE.SmallStages.Oracles531.oracle531
